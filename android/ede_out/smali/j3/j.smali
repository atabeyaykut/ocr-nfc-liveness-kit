.class public final Lj3/j;
.super Lj3/d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj3/k;


# direct methods
.method public constructor <init>(Lj3/k;)V
    .locals 0

    iput-object p1, p0, Lj3/j;->a:Lj3/k;

    invoke-direct {p0}, Lj3/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lj3/j;->a:Lj3/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Ln3/h;)V

    return-void
.end method
