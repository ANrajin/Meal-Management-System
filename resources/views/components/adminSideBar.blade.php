      <div class="sl-sideleft-menu">
        <a href="javascript:void(0)" class="sl-menu-link active">
          <div class="sl-menu-item">
            <i class="menu-item-icon icon ion-ios-home-outline tx-22"></i>
            <span class="menu-item-label">Dashboard</span>
          </div><!-- menu-item -->
        </a><!-- sl-menu-link -->
        <a href="{{route('students.index')}}" class="sl-menu-link">
          <div class="sl-menu-item">
            <i class="menu-item-icon icon ion-ios-photos-outline tx-20"></i>
            <span class="menu-item-label">Students</span>
          </div><!-- menu-item -->
        </a><!-- sl-menu-link -->
        <a href="{{route('foods.index')}}" class="sl-menu-link">
          <div class="sl-menu-item">
            <i class="menu-item-icon icon ion-ios-photos-outline tx-20"></i>
            <span class="menu-item-label">Foods</span>
          </div><!-- menu-item -->
        </a><!-- sl-menu-link -->
        <a href="#" class="sl-menu-link">
          <div class="sl-menu-item">
            <i class="menu-item-icon ion-ios-pie-outline tx-20"></i>
            <span class="menu-item-label">Food Management</span>
            <i class="menu-item-arrow fa fa-angle-down"></i>
          </div><!-- menu-item -->
        </a><!-- sl-menu-link -->
        <ul class="sl-menu-sub nav flex-column">
          <li class="nav-item"><a href="{{route('foods.menu')}}" class="nav-link">Food Menu</a></li>
          <li class="nav-item"><a href="{{route('foodList')}}" class="nav-link">Meal List</a></li>
        </ul>
        <a href="#" class="sl-menu-link">
          <div class="sl-menu-item">
            <i class="menu-item-icon icon ion-ios-filing-outline tx-24"></i>
            <span class="menu-item-label">Stocks</span>
            <i class="menu-item-arrow fa fa-angle-down"></i>
          </div><!-- menu-item -->
        </a><!-- sl-menu-link -->
        <ul class="sl-menu-sub nav flex-column">
          <li class="nav-item"><a href="{{route('inventory.index')}}" class="nav-link">Inventory</a></li>
          <li class="nav-item"><a href="{{route('inventory.dispatch')}}" class="nav-link">Dispatch</a></li>
          <li class="nav-item"><a href="{{route('inventory.dispatchList')}}" class="nav-link">Dispatch List</a></li>
        </ul>
      </div><!-- sl-sideleft-menu -->