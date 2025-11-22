.class public Lc5/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/z4;
.implements Lc5/g3;


# instance fields
.field public final a:Lc5/z4;


# direct methods
.method public synthetic constructor <init>(Lc5/i4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lc5/x4;->a:Lc5/z4;

    return-void
.end method

.method public synthetic constructor <init>(Lc5/o7;)V
    .locals 0

    iput-object p1, p0, Lc5/x4;->a:Lc5/z4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    move-object v1, v0

    check-cast v1, Lc5/o7;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lc5/o7;->g(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 6
    .line 7
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final i()Lw3/a;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Lcom/google/android/gms/internal/clearcut/z;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final k()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final l()Lc5/h4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Lc5/e3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method
