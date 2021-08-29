.class public abstract Landroidx/room/l$a;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/room/l$a;->version:I

    return-void
.end method


# virtual methods
.method protected abstract createAllTables(Lb/p/a/b;)V
.end method

.method protected abstract dropAllTables(Lb/p/a/b;)V
.end method

.method protected abstract onCreate(Lb/p/a/b;)V
.end method

.method protected abstract onOpen(Lb/p/a/b;)V
.end method

.method protected abstract onPostMigrate(Lb/p/a/b;)V
.end method

.method protected abstract onPreMigrate(Lb/p/a/b;)V
.end method

.method protected abstract onValidateSchema(Lb/p/a/b;)Landroidx/room/l$b;
.end method

.method protected validateMigration(Lb/p/a/b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "validateMigration is deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
