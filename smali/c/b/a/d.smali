.class public final Lc/b/a/d;
.super Lc/b/a/f;
.source "FormatException.java"


# static fields
.field private static final d:Lc/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/d;

    invoke-direct {v0}, Lc/b/a/d;-><init>()V

    .line 2
    sput-object v0, Lc/b/a/d;->d:Lc/b/a/d;

    sget-object v1, Lc/b/a/f;->c:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/f;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/d;
    .locals 1

    .line 1
    sget-boolean v0, Lc/b/a/f;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lc/b/a/d;

    invoke-direct {v0}, Lc/b/a/d;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lc/b/a/d;->d:Lc/b/a/d;

    return-object v0
.end method
