.class public Lcom/google/android/material/resources/MaterialResources;
.super Ljava/lang/Object;
.source "MaterialResources.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, v0}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-gt p0, v0, :cond_1

    const/4 p0, -0x1

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 6
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/v0;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 8
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0, v0}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-gt p0, v0, :cond_1

    const/4 p0, -0x1

    .line 12
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/widget/v0;->b(II)I

    move-result v0

    if-eq v0, p0, :cond_1

    .line 13
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, v0}, Lb/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static getIndexWithValue(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p2, Lcom/google/android/material/resources/TextAppearance;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
