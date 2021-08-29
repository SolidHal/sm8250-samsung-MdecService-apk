.class Lb/p/a/g/a$a;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/p/a/g/a;->l(Lb/p/a/e;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/p/a/e;


# direct methods
.method constructor <init>(Lb/p/a/g/a;Lb/p/a/e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/p/a/g/a$a;->a:Lb/p/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object p1, p0, Lb/p/a/g/a$a;->a:Lb/p/a/e;

    new-instance v0, Lb/p/a/g/d;

    invoke-direct {v0, p4}, Lb/p/a/g/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Lb/p/a/e;->m(Lb/p/a/d;)V

    .line 2
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method
