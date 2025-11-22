.class public final Lc5/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lc5/c4;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/l7;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/l7;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc5/l7;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc5/o7;Lc5/y7;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/l7;->a:I

    .line 2
    iput-object p1, p0, Lc5/l7;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc5/l7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lc5/l7;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/l7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/l7;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :pswitch_0
    check-cast v2, Lc5/o7;

    .line 12
    .line 13
    check-cast v1, Lc5/y7;

    .line 14
    .line 15
    iget-object v0, v1, Lc5/y7;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lc5/o7;->L(Ljava/lang/String;)Lc5/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lc5/f;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v1, Lc5/y7;->y:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lc5/f;->b(Ljava/lang/String;)Lc5/f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lc5/f;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2, v1}, Lc5/o7;->J(Lc5/y7;)Lc5/m4;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lc5/m4;->G()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lc5/o7;->m()Lc5/e3;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    .line 57
    .line 58
    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_1
    return-object v0

    .line 65
    :goto_2
    check-cast v1, Lc5/c4;

    .line 66
    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    new-instance v0, Lcom/google/android/gms/internal/measurement/qc;

    .line 70
    .line 71
    new-instance v3, Lc5/z3;

    .line 72
    .line 73
    invoke-direct {v3, v1, v2}, Lc5/z3;-><init>(Lc5/c4;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/qc;-><init>(Lc5/z3;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
