.class public Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;
.super Ljava/lang/Object;
.source "RoutingConfigPopupDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onCancel()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onCancel()V

    return-void
.end method

.method static synthetic c(Landroid/widget/RadioGroup;Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    const p2, 0x7f090198

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1, p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onConfigureCmcOnOffRoutineAction(Z)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onCancel()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onCancel()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onOpenCmcForSetup()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onCancel()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onCancel()V

    return-void
.end method

.method public static showCmcOnOffRoutineConfigPopup(Landroid/content/Context;Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCmcOnOffRoutineConfigPopup previous setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0050

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09010d

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    const v3, 0x7f090198

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v4, 0x7f090197

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const v7, 0x7f0f00c7

    .line 8
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "   %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    new-array v6, v5, [Ljava/lang/Object;

    const v9, 0x7f0f00c6

    .line 9
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    :goto_0
    new-instance p1, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$1;

    invoke-direct {p1, v0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$1;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 13
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v3, Landroidx/appcompat/app/c$a;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 16
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    const/high16 p0, 0x1040000

    .line 17
    new-instance p1, Lcom/samsung/android/cmcsettings/view/routine/e;

    invoke-direct {p1, v0}, Lcom/samsung/android/cmcsettings/view/routine/e;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v3, p0, p1}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 18
    new-instance p0, Lcom/samsung/android/cmcsettings/view/routine/a;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/routine/a;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v3, p0}, Landroidx/appcompat/app/c$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    const p0, 0x7f0f00c4

    .line 19
    new-instance p1, Lcom/samsung/android/cmcsettings/view/routine/c;

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/cmcsettings/view/routine/c;-><init>(Landroid/widget/RadioGroup;Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v3, p0, p1}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 20
    invoke-virtual {v3}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    return-void
.end method

.method public static showCmcSetUpRoutingConfigPopup(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showCmcSetUpRoutingConfigPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0051

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090062

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900cf

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    new-instance v4, Landroidx/appcompat/app/c$a;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v4, v1}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    .line 9
    new-instance p0, Lcom/samsung/android/cmcsettings/view/routine/g;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/routine/g;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance p0, Lcom/samsung/android/cmcsettings/view/routine/d;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/routine/d;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v4, p0}, Landroidx/appcompat/app/c$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    .line 11
    new-instance p0, Lcom/samsung/android/cmcsettings/view/routine/b;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/routine/b;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v4}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    return-void
.end method

.method public static showErrorRoutineConfigPopup(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorRoutineConfigPopup validState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    .line 3
    new-instance v1, Landroidx/appcompat/app/c$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f0071

    .line 4
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setTitle(I)Landroidx/appcompat/app/c$a;

    const/16 p0, -0x65

    if-ne p1, p0, :cond_0

    const p0, 0x7f0f0072

    .line 5
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    goto :goto_0

    :cond_0
    const/16 p0, -0x66

    if-ne p1, p0, :cond_1

    const p0, 0x7f0f0076

    .line 6
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    goto :goto_0

    :cond_1
    const/16 p0, -0x67

    if-ne p1, p0, :cond_2

    const p0, 0x7f0f0074

    .line 7
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    goto :goto_0

    :cond_2
    const/16 p0, -0x68

    if-ne p1, p0, :cond_3

    const p0, 0x7f0f0078

    .line 8
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    goto :goto_0

    :cond_3
    const/16 p0, -0x69

    if-ne p1, p0, :cond_4

    const p0, 0x7f0f0075

    .line 9
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    goto :goto_0

    :cond_4
    const/16 p0, -0x6a

    if-ne p1, p0, :cond_5

    const p0, 0x7f0f0077

    .line 10
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    :cond_5
    :goto_0
    const p0, 0x7f0f0026

    .line 11
    new-instance p1, Lcom/samsung/android/cmcsettings/view/routine/f;

    invoke-direct {p1, v0}, Lcom/samsung/android/cmcsettings/view/routine/f;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 12
    new-instance p0, Lcom/samsung/android/cmcsettings/view/routine/h;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/routine/h;-><init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/c$a;

    .line 13
    invoke-virtual {v1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    return-void
.end method
