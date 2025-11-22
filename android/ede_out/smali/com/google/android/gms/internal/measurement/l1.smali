.class public final Lcom/google/android/gms/internal/measurement/l1;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/d2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Lcom/google/android/gms/internal/measurement/d2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/l1;->e:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Lcom/google/android/gms/internal/measurement/d2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 4
    .line 5
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l1;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/y1;->b:J

    .line 11
    .line 12
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/v0;->beginAdUnitExposure(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
