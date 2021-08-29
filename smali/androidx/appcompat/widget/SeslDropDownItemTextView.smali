.class public Landroidx/appcompat/widget/SeslDropDownItemTextView;
.super Landroidx/appcompat/widget/SeslCheckedTextView;
.source "SeslDropDownItemTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslDropDownItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslCheckedTextView;->setChecked(Z)V

    const-string v0, "sec-roboto-light"

    .line 2
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    const v0, -0xff01

    if-ne p1, v0, :cond_2

    const-string p1, "SeslDropDownItemTextView"

    const-string v0, "SeslDropDownItemTextView text color reload!!"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/n/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 7
    sget v0, Lb/a/c;->sesl_spinner_dropdown_text_color_light:I

    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lb/a/c;->sesl_spinner_dropdown_text_color_dark:I

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    const-string v0, "Didn\'t set SeslDropDownItemTextView text color!!"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
