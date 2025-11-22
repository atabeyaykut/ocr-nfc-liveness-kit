.class public final Lcom/google/android/gms/internal/measurement/v1;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/r0;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/d2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/r0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v1;->g:Lcom/google/android/gms/internal/measurement/d2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/v1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/v1;->f:Lcom/google/android/gms/internal/measurement/r0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v1;->g:Lcom/google/android/gms/internal/measurement/d2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v1;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/v1;->f:Lcom/google/android/gms/internal/measurement/r0;

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/v0;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v1;->f:Lcom/google/android/gms/internal/measurement/r0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/r0;->a(Landroid/os/Bundle;)V

    return-void
.end method
