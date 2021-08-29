.class public Lc/f/b/a/d;
.super Ljava/io/IOException;
.source "FolderClosedIOException.java"


# instance fields
.field private transient b:Ld/b/c;


# direct methods
.method public constructor <init>(Ld/b/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/f/b/a/d;->b:Ld/b/c;

    return-void
.end method
