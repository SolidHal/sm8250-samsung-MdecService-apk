.class public final synthetic Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/a;->b:Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;

    return-void
.end method


# virtual methods
.method public final onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/a;->b:Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->a(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void
.end method
