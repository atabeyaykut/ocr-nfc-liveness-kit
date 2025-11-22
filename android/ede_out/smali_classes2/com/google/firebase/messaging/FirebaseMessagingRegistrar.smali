.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/i;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lc6/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lx5/c;

    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lx5/c;

    const-class v0, Lz6/a;

    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lz6/a;

    const-class v0, Li7/g;

    invoke-interface {p0, v0}, Lc6/e;->c(Ljava/lang/Class;)La7/b;

    move-result-object v3

    const-class v0, Ly6/e;

    invoke-interface {p0, v0}, Lc6/e;->c(Ljava/lang/Class;)La7/b;

    move-result-object v4

    const-class v0, Lb7/d;

    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lb7/d;

    const-class v0, Lr2/g;

    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr2/g;

    const-class v0, Lx6/d;

    invoke-interface {p0, v0}, Lc6/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lx6/d;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lx5/c;Lz6/a;La7/b;La7/b;Lb7/d;Lr2/g;Lx6/d;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lc6/d;

    .line 3
    .line 4
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    invoke-static {v1}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lc6/o;

    .line 11
    .line 12
    const-class v3, Lx5/c;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v2, v4, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lc6/o;

    .line 23
    .line 24
    const-class v3, Lz6/a;

    .line 25
    .line 26
    invoke-direct {v2, v5, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lc6/o;

    .line 33
    .line 34
    const-class v3, Li7/g;

    .line 35
    .line 36
    invoke-direct {v2, v5, v4, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lc6/o;

    .line 43
    .line 44
    const-class v3, Ly6/e;

    .line 45
    .line 46
    invoke-direct {v2, v5, v4, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lc6/o;

    .line 53
    .line 54
    const-class v3, Lr2/g;

    .line 55
    .line 56
    invoke-direct {v2, v5, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lc6/o;

    .line 63
    .line 64
    const-class v3, Lb7/d;

    .line 65
    .line 66
    invoke-direct {v2, v4, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lc6/o;

    .line 73
    .line 74
    const-class v3, Lx6/d;

    .line 75
    .line 76
    invoke-direct {v2, v4, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Lg7/v;->a:Lg7/v;

    .line 83
    .line 84
    iput-object v2, v1, Lc6/d$a;->e:Lc6/h;

    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lc6/d$a;->c(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lc6/d$a;->b()Lc6/d;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aput-object v1, v0, v5

    .line 94
    .line 95
    const-string v1, "fire-fcm"

    .line 96
    .line 97
    const-string v2, "23.0.0"

    .line 98
    .line 99
    invoke-static {v1, v2}, Li7/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc6/d;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    aput-object v1, v0, v4

    .line 104
    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method
