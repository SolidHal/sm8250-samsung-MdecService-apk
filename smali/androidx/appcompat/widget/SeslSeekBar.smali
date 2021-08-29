.class public Landroidx/appcompat/widget/SeslSeekBar;
.super Landroidx/appcompat/widget/m0;
.source "SeslSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SeslSeekBar$b;,
        Landroidx/appcompat/widget/SeslSeekBar$a;
    }
.end annotation


# instance fields
.field private M0:Landroidx/appcompat/widget/SeslSeekBar$a;

.field private N0:Landroidx/appcompat/widget/SeslSeekBar$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lb/a/a;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/m0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method W(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->N0:Landroidx/appcompat/widget/SeslSeekBar$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, p0, p1, v1}, Landroidx/appcompat/widget/SeslSeekBar$b;->c(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/m0;->W(III)V

    return-void
.end method

.method Y(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->N0:Landroidx/appcompat/widget/SeslSeekBar$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Landroidx/appcompat/widget/SeslSeekBar$b;->a(Landroidx/appcompat/widget/SeslSeekBar;I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/m0;->Y(III)V

    return-void
.end method

.method Z()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/m0;->Z()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->M0:Landroidx/appcompat/widget/SeslSeekBar$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$a;->a(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->N0:Landroidx/appcompat/widget/SeslSeekBar$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$b;->b(Landroidx/appcompat/widget/SeslSeekBar;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/m0;->a0()V

    return-void
.end method

.method b0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/m0;->b0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->M0:Landroidx/appcompat/widget/SeslSeekBar$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$a;->b(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/m0;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->M0:Landroidx/appcompat/widget/SeslSeekBar$a;

    return-void
.end method

.method public setOnSeekBarHoverListener(Landroidx/appcompat/widget/SeslSeekBar$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->N0:Landroidx/appcompat/widget/SeslSeekBar$b;

    return-void
.end method

.method u(FZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/m0;->u(FZI)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->M0:Landroidx/appcompat/widget/SeslSeekBar$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0, p3, p2}, Landroidx/appcompat/widget/SeslSeekBar$a;->c(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_0
    return-void
.end method
