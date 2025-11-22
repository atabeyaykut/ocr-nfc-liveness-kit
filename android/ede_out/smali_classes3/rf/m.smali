.class public final Lrf/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcf/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lrf/m;->a:I

    iput-object p2, p0, Lrf/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 3

    .line 1
    iget v0, p0, Lrf/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lrf/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Lmh/b;

    .line 10
    .line 11
    check-cast v1, Lfh/g;

    .line 12
    .line 13
    iget-object v0, v1, Lfh/g;->a:Lk9/a;

    .line 14
    .line 15
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lmh/f;

    .line 20
    .line 21
    new-instance v1, Lmh/c;

    .line 22
    .line 23
    invoke-direct {v1, p1, v0}, Lmh/c;-><init>(Lmh/b;Lmh/f;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_1
    check-cast p1, Llh/d;

    .line 28
    .line 29
    check-cast v1, Lrf/l;

    .line 30
    .line 31
    iget-object v0, v1, Lrf/l;->a:Lk9/a;

    .line 32
    .line 33
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Llh/j;

    .line 38
    .line 39
    iget-object v1, v1, Lrf/l;->b:Lk9/a;

    .line 40
    .line 41
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Llh/a;

    .line 46
    .line 47
    new-instance v2, Llh/e;

    .line 48
    .line 49
    invoke-direct {v2, p1, v0, v1}, Llh/e;-><init>(Llh/d;Llh/j;Llh/a;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :pswitch_2
    check-cast p1, Lfh/c;

    .line 54
    .line 55
    check-cast v1, Lfh/g;

    .line 56
    .line 57
    iget-object v0, v1, Lfh/g;->a:Lk9/a;

    .line 58
    .line 59
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lfh/h;

    .line 64
    .line 65
    new-instance v1, Lfh/d;

    .line 66
    .line 67
    invoke-direct {v1, p1, v0}, Lfh/d;-><init>(Lfh/c;Lfh/h;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :pswitch_3
    check-cast p1, Lrf/f;

    .line 72
    .line 73
    check-cast v1, Lrf/l;

    .line 74
    .line 75
    iget-object v0, v1, Lrf/l;->a:Lk9/a;

    .line 76
    .line 77
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lrf/c;

    .line 82
    .line 83
    iget-object v1, v1, Lrf/l;->b:Lk9/a;

    .line 84
    .line 85
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lrf/n;

    .line 90
    .line 91
    new-instance v2, Lrf/g;

    .line 92
    .line 93
    invoke-direct {v2, p1, v0, v1}, Lrf/g;-><init>(Lrf/f;Lrf/c;Lrf/n;)V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :goto_0
    check-cast p1, Lph/c;

    .line 98
    .line 99
    check-cast v1, Lfh/g;

    .line 100
    .line 101
    iget-object v0, v1, Lfh/g;->a:Lk9/a;

    .line 102
    .line 103
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lph/e;

    .line 108
    .line 109
    new-instance v1, Lph/d;

    .line 110
    .line 111
    invoke-direct {v1, p1, v0}, Lph/d;-><init>(Lph/c;Lph/e;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
