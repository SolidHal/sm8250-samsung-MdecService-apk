.class public final Ld/b/b$a;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Ld/b/b$a;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/b/b$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld/b/b$a;-><init>(I)V

    sput-object v0, Ld/b/b$a;->b:Ld/b/b$a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/b/b$a;->a:I

    return-void
.end method

.method static synthetic a(Ld/b/b$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld/b/b$a;->a:I

    return p0
.end method
