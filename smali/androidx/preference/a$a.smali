.class Landroidx/preference/a$a;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/a;->a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/preference/PreferenceGroup;

.field final synthetic c:Landroidx/preference/a;


# direct methods
.method constructor <init>(Landroidx/preference/a;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/a$a;->c:Landroidx/preference/a;

    iput-object p2, p0, Landroidx/preference/a$a;->b:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/a$a;->b:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->m(I)V

    .line 2
    iget-object v0, p0, Landroidx/preference/a$a;->c:Landroidx/preference/a;

    iget-object v0, v0, Landroidx/preference/a;->a:Landroidx/preference/h;

    invoke-virtual {v0, p1}, Landroidx/preference/h;->a(Landroidx/preference/Preference;)V

    .line 3
    iget-object p1, p0, Landroidx/preference/a$a;->b:Landroidx/preference/PreferenceGroup;

    .line 4
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->e()Landroidx/preference/PreferenceGroup$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$b;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
