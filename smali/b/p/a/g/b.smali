.class Lb/p/a/g/b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Lb/p/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/p/a/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Lb/p/a/g/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb/p/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lb/p/a/g/b;->c(Landroid/content/Context;Ljava/lang/String;Lb/p/a/c$a;)Lb/p/a/g/b$a;

    move-result-object p1

    iput-object p1, p0, Lb/p/a/g/b;->a:Lb/p/a/g/b$a;

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Lb/p/a/c$a;)Lb/p/a/g/b$a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lb/p/a/g/a;

    .line 1
    new-instance v1, Lb/p/a/g/b$a;

    invoke-direct {v1, p1, p2, v0, p3}, Lb/p/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lb/p/a/g/a;Lb/p/a/c$a;)V

    return-object v1
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/p/a/g/b;->a:Lb/p/a/g/b$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/p/a/g/b;->a:Lb/p/a/g/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/p/a/g/b;->a:Lb/p/a/g/b$a;

    invoke-virtual {v0}, Lb/p/a/g/b$a;->close()V

    return-void
.end method

.method public getWritableDatabase()Lb/p/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/p/a/g/b;->a:Lb/p/a/g/b$a;

    invoke-virtual {v0}, Lb/p/a/g/b$a;->s()Lb/p/a/b;

    move-result-object v0

    return-object v0
.end method
