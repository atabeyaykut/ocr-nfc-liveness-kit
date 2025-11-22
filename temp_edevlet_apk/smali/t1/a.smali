.class public final Lt1/a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/esafirm/imagepicker/features/ContentObserverTrigger;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/features/ContentObserverTrigger;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lt1/a;->a:Lcom/esafirm/imagepicker/features/ContentObserverTrigger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lt1/a;->a:Lcom/esafirm/imagepicker/features/ContentObserverTrigger;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->b:Lx9/a;

    .line 4
    .line 5
    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method
