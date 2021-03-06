app && app.controller('business', function($scope, $http, $timeout) {
  $scope.currentBusiness = 'cost';
  $scope.faka = {};
  $scope.cost = {};
  $scope.recharge = {};
  $scope.guashi = {};
  $scope.jihuo = {};
  $scope.cardlist = {};
  
  $scope.changeBusiness = function(tag) {
    $scope.currentBusiness = tag;
    $scope[tag] && $scope[tag].init && $scope[tag].init();
  }
  
  $scope.faka.init = function() {
    $.get("/api/cartype/list").success(function(data){
      $scope.$apply(function(){
          $scope.faka.cartypes = data;
          $scope.faka.car = {
              'typeid': '1'
          };
        }
      );
    })
  }

  $scope.faka.submit = function() {
    validation($('#faka')).success(function(){
      $.post("/api/card/save",{
        "name": $scope.faka.user.name,
        "phone": $scope.faka.user.phone,
        "number": $scope.faka.user.phone,
        "idcard": $scope.faka.user.idcard,
        "carNumber": $scope.faka.car.number,
        "type.id": $scope.faka.car.typeid
      }).success(function(data){
        $scope.$apply(function(){
          $scope.result = true;
          $scope.faka.car = {
              'typeid': '1'
          };
          $timeout(function(){
            $scope.result = false;
          }, 2000);
        })
      })
    })
  }
  
  $scope.guashi.findCard = function() {
    $http.get("/api/card/one/idcard?id=" + $scope.guashi.idcard).success(function(data){
      $scope.guashi.card = data.card;
      $scope.guashi.user = data.user;
      console.log(data);
    }).error(function(){
      alert('身份证号不存在');
    })
  }
  $scope.guashi.banCard = function(id) {
    $.get("/api/card/ban?id=" + id).success(function(data){
      $scope.$apply(function(){
        $scope.result=true;
        $timeout(function(){
          $scope.result=false;
        },2000)
        $scope.guashi.findCard();
      });
    })
  }
  $scope.guashi.changeCardState = function(id) {
      $scope.guashi.card.state.name == '挂失' ? $scope.jihuo.unbanCard(id):$scope.guashi.banCard(id);
  }
  
  $scope.jihuo.findCard = function() {
    $http.get("/api/card/one/idcard?id=" + $scope.jihuo.idcard).success(function(data){
      $scope.jihuo.card = data;
    }).error(function(){
      console.log("error");
    })
  }
  $scope.jihuo.unbanCard = function(id) {
    $.get("/api/card/unban?id=" + id).success(function(data){
      $scope.$apply(function(){
        $scope.result=true;
        $timeout(function(){
          $scope.result=false;
        },2000)
        $scope.guashi.findCard();
      });
    })
  }
  
  $scope.cardlist.init = function() {
    $scope.cardlist._loadData();
  }
  $scope.cardlist._loadData = function() {
    $.get("/api/card/list/pagenation").success(function(data){
      $scope.$apply(function(){
        $scope.cardlist.totalPages = data.totalPages;
        $scope.cardlist.cards = data.content;
      });
    })
  }
  $scope.cardlist.banCard = function(id) {
    $.get("/api/card/ban?id=" + id).success(function(data){
      $scope.$apply(function(){
        $scope.cardlist._loadData();
        $scope.result = true;
        $timeout(function(){
          $scope.result = false;
        },2000);
      });
    })
  }
  $scope.cardlist.unbanCard = function(id) {
    $.get("/api/card/unban?id=" + id).success(function(data){
      $scope.$apply(function(){
        $scope.cardlist._loadData();
        $scope.result = true;
        $timeout(function(){
          $scope.result = false;
        },2000);
      });
    })
  }
  $scope.cardlist.gotoPage = function(page) {
    console.log(page)
  }
  
  $scope.cost.submit = function() {
    validation($('#cost')).success(function(){
      $.post("/api/card/cost",{
        "gasAmount": $scope.cost.gasAmount,
        "price": $scope.cost.price,
        "phone": $scope.cost.phoneNumber
      }).success(function(data){
        alert(data.message);
      }).error(function(data){
        console.log("error");
      })
    })
  }
  
  $scope.recharge.submit = function() {
    validation($('#recharge')).success(function(){
      if($scope.recharge.phone === $scope.recharge.phoneAgain){
        $.post("/api/card/recharge",{
          "phone": $scope.recharge.phone,
          "money": $scope.recharge.money
        }).success(function(data){
          console.log(data);
          alert(data.message);
        }).error(function(data){
          console.log("error");
        })
      } else {
        alert("两次不一致");
      }
    })
  }
  
  $scope.$watch('cost.price',function(val){
    $scope.cost.totalPrice = val * $scope.cost.gasAmount;
  })
  $scope.$watch('cost.gasAmount',function(val){
    $scope.cost.totalPrice = val * $scope.cost.price;
  })
  $scope.changeBusiness("cost");
})
