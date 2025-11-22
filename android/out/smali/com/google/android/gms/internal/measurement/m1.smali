.class public final Lcom/google/android/gms/internal/measurement/m1;
.super Lcom/google/android/gms/internal/measurement/y1;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/c2;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/m1;->e:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m1;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m1;->f:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/c2;->a:Lcom/google/android/gms/internal/measurement/d2;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/m1;->e:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m1;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m1;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/d2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/m1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m1;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 12
    .line 13
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m1;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/y1;->b:J

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/v0;->endAdUnitExposure(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m1;->g:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/measurement/c2;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/c2;->a:Lcom/google/android/gms/internal/measurement/d2;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d2;->f:Lcom/google/android/gms/internal/measurement/v0;

    .line 33
    .line 34
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m1;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Landroid/app/Activity;

    .line 40
    .line 41
    new-instance v2, Lz3/d;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/y1;->b:J

    .line 47
    .line 48
    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/v0;->onActivityStarted(Lz3/b;J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
