<?php 
// namespace Scenario;
class CreateTaskCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function createTask(\Step\Acceptance\AllSteps $I)
    {
	    $I->loginAsAdmin();
	    $I->click('Project Manager');
	    $I->wait(5);
	    $I->click('.pm-project-column:nth-child(1) .pm-project-title > a');
	    $I->wait(5);
	    $I->click('Task Lists');
	    $I->wait(5);
	    $I->createTask();

	    // $I->click('//span/div/div/a');
	    // $I->checkOption('//div/div[2]/select', 'Weekly');
	    // $I->click('//span/div[2]/span');
	    // $I->click('//div[2]/span/div[3]/a/span');//label
	    // $I->click('//div[2]/span[2]');
	    // $I->wait(5);
	    // $I->fillField('//*[@id="mceu_302"]','abc all');
	    // $I->click('//span[3]/span[2]');

    }
}
