.class Landroidx/appcompat/widget/SeslProgressBar$a;
.super Landroid/util/FloatProperty;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroidx/appcompat/widget/SeslProgressBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/SeslProgressBar;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/SeslProgressBar;->h(Landroidx/appcompat/widget/SeslProgressBar;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/appcompat/widget/SeslProgressBar;F)V
    .locals 1

    .line 1
    sget v0, Lb/a/f;->progress:I

    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->g(Landroidx/appcompat/widget/SeslProgressBar;IF)V

    .line 2
    invoke-static {p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->i(Landroidx/appcompat/widget/SeslProgressBar;F)F

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar$a;->a(Landroidx/appcompat/widget/SeslProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar$a;->b(Landroidx/appcompat/widget/SeslProgressBar;F)V

    return-void
.end method
