.class public final Lj3/h;
.super Lj3/d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj3/i;


# direct methods
.method public constructor <init>(Lj3/i;)V
    .locals 0

    iput-object p1, p0, Lj3/h;->a:Lj3/i;

    invoke-direct {p0}, Lj3/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final V(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lj3/h;->a:Lj3/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Ln3/h;)V

    return-void
.end method
