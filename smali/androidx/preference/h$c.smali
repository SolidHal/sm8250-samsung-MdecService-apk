.class Landroidx/preference/h$c;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/preference/h$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Landroidx/preference/h$c;->a:I

    iput v0, p0, Landroidx/preference/h$c;->a:I

    .line 4
    iget v0, p1, Landroidx/preference/h$c;->b:I

    iput v0, p0, Landroidx/preference/h$c;->b:I

    .line 5
    iget-object p1, p1, Landroidx/preference/h$c;->c:Ljava/lang/String;

    iput-object p1, p0, Landroidx/preference/h$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/preference/h$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroidx/preference/h$c;

    .line 3
    iget v0, p0, Landroidx/preference/h$c;->a:I

    iget v2, p1, Landroidx/preference/h$c;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/preference/h$c;->b:I

    iget v2, p1, Landroidx/preference/h$c;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/preference/h$c;->c:Ljava/lang/String;

    iget-object p1, p1, Landroidx/preference/h$c;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/h$c;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Landroidx/preference/h$c;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Landroidx/preference/h$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
