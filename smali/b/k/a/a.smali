.class public abstract Lb/k/a/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/lifecycle/j;)Lb/k/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/j;",
            ":",
            "Landroidx/lifecycle/x;",
            ">(TT;)",
            "Lb/k/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/k/a/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/x;

    invoke-interface {v1}, Landroidx/lifecycle/x;->getViewModelStore()Landroidx/lifecycle/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/k/a/b;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/w;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()V
.end method
