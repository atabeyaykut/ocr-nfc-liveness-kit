.class public final Lcom/google/android/gms/internal/measurement/x1;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Z

.field public final synthetic j:Lcom/google/android/gms/internal/measurement/d2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x1;->j:Lcom/google/android/gms/internal/measurement/d2;

    const-string v0, "fcm"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x1;->e:Ljava/lang/String;

    const-string v0, "_ln"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x1;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/x1;->g:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/x1;->h:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x1;->j:Lcom/google/android/gms/internal/measurement/d2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 4
    .line 5
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/x1;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/x1;->f:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x1;->g:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v4, Lz3/d;

    .line 15
    .line 16
    invoke-direct {v4, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/x1;->h:Z

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/y1;->a:J

    .line 22
    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/v0;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lz3/b;ZJ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
