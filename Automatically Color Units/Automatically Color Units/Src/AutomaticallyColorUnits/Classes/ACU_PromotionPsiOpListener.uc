class ACU_PromotionPsiOpListener extends UIScreenListener;

var ACU_UnitColorer unitColorer;

// This event is triggered after a screen is initialized
event OnInit(UIScreen screen)
{
    if(unitColorer == none)
    {
        unitColorer = new class'ACU_UnitColorer';
    }

    unitColorer.UpdateUnitColor(UIArmory_Promotion(screen).GetUnit());
}

defaultproperties
{
    ScreenClass = UIArmory_PromotionPsiOp;
}