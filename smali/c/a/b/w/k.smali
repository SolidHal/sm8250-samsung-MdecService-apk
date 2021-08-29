.class public Lc/a/b/w/k;
.super Lc/a/b/w/l;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/b/w/l<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lc/a/b/p$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lc/a/b/p$a;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc/a/b/w/l;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/a/b/p$b;Lc/a/b/p$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lc/a/b/p$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lc/a/b/p$a;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lc/a/b/w/k;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;)V

    return-void
.end method


# virtual methods
.method protected abstract parseNetworkResponse(Lc/a/b/k;)Lc/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/k;",
            ")",
            "Lc/a/b/p<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method
