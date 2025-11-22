.class public final Lcom/google/android/gms/internal/measurement/w1;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Lcom/google/android/gms/internal/measurement/d2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w1;->l:Lcom/google/android/gms/internal/measurement/d2;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->e:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/w1;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/w1;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/w1;->h:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/w1;->j:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/w1;->k:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->e:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/y1;->a:J

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    move-wide v8, v0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->l:Lcom/google/android/gms/internal/measurement/d2;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 16
    .line 17
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/w1;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/w1;->g:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/w1;->h:Landroid/os/Bundle;

    .line 25
    .line 26
    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/w1;->j:Z

    .line 27
    .line 28
    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/w1;->k:Z

    .line 29
    .line 30
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/v0;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
