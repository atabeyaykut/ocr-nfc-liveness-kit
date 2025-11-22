.class public final Lcom/google/android/gms/internal/measurement/b2;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/r0;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/c2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/c2;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/r0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->g:Lcom/google/android/gms/internal/measurement/c2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/b2;->e:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/b2;->f:Lcom/google/android/gms/internal/measurement/r0;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/c2;->a:Lcom/google/android/gms/internal/measurement/d2;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->g:Lcom/google/android/gms/internal/measurement/c2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/c2;->a:Lcom/google/android/gms/internal/measurement/d2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 6
    .line 7
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b2;->e:Landroid/app/Activity;

    .line 11
    .line 12
    new-instance v2, Lz3/d;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/b2;->f:Lcom/google/android/gms/internal/measurement/r0;

    .line 18
    .line 19
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/y1;->b:J

    .line 20
    .line 21
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/v0;->onActivitySaveInstanceState(Lz3/b;Lcom/google/android/gms/internal/measurement/y0;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
