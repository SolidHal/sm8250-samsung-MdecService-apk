.class public final synthetic Lcom/samsung/android/cmcsettings/view/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/f;->a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/f;->a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    check-cast p1, Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->c(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Ljava/util/HashSet;)V

    return-void
.end method
