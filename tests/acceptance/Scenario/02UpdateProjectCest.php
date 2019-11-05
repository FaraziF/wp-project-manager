<?php
// namespace Scenario;
use \Codeception\Util\Locator;

class UpdateProjectCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function updateProject(\Step\Acceptance\AllSteps $I)
    {
      $I->loginAsAdmin();
      $I->updateProject();
    }
}
// function pmfk() {
//   return \Faker\Factory::create();
// }
