<template>
  <div>
    <div class="masthead">
      <a href="/"><img src="~/assets/images/2016/10/logo.png" /></a>
    </div>
    <INavbar>
      <INavbarCollapsible>
        <INav size="sm">
          <INavItem to="/">Home</INavItem>
          <INavItem to="/about-us">About Us</INavItem>
          <IDropdown events="hover" size="sm" :hoverHideDelay="0">
            <INavItem stopPropagation>Events</INavItem>
            <template #body>
              <IDropdownItem to="/events/calendar">Calendar</IDropdownItem>
              <IDropdownItem to="/events/lectures">Lectures</IDropdownItem>
              <IDropdownItem to="/events/confrences">Confrences</IDropdownItem>
            </template>
          </IDropdown>
          <IDropdown events="hover" size="sm" :hoverHideDelay="0">
            <INavItem stopPropagation>History</INavItem>
            <template #body>
              <IDropdownItem to="/history/chronology">Chronology</IDropdownItem>
              <IDropdownItem to="/history/religion">Religion</IDropdownItem>
              <IDropdownItem to="/history/dialect">Dialect</IDropdownItem>
              <IDropdownItem to="/history/poems">Poems</IDropdownItem>
              <IDropdownItem to="/history/dances">Dances</IDropdownItem>
              <IDropdownItem to="/history/oral-stories">Oral Stories</IDropdownItem>
            </template>
          </IDropdown>
          <IDropdown events="hover" size="sm" :hoverHideDelay="0">
            <INavItem stopPropagation>Youth Group</INavItem>
            <template #body>
              <IDropdownItem to="/youth-group/dance-troups"
                >Dance Troups</IDropdownItem
              >
              <IDropdownItem to="/youth-group/youth-news">Religion</IDropdownItem>
              <IDropdownItem to="/youth-group/photo-gallery"
                >Photo Gallery</IDropdownItem
              >
            </template>
          </IDropdown>
          <INavItem to="/book-store">Book Store</INavItem>
          <INavItem to="/contact-us">Contact Us</INavItem>
        </INav>
      </INavbarCollapsible>
    </INavbar>
  </div>
</template>
<style scoped>
.masthead {
  padding: 24px 0;
}
</style>
