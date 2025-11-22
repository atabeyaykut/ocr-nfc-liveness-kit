.class public final Lbe/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lk9/a;

.field public final c:Lk9/a;

.field public final d:Lk9/a;

.field public final e:Lk9/a;

.field public final f:Lk9/a;


# direct methods
.method public synthetic constructor <init>(Lzf/d1$d;Lgf/c;Lzf/d1$a;Lzf/d1$b;Lgf/c;I)V
    .locals 0

    iput p6, p0, Lbe/g;->a:I

    iput-object p1, p0, Lbe/g;->b:Lk9/a;

    iput-object p2, p0, Lbe/g;->c:Lk9/a;

    iput-object p3, p0, Lbe/g;->d:Lk9/a;

    iput-object p4, p0, Lbe/g;->e:Lk9/a;

    iput-object p5, p0, Lbe/g;->f:Lk9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lbe/g;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lbe/g;->f:Lk9/a;

    .line 4
    .line 5
    iget-object v2, p0, Lbe/g;->e:Lk9/a;

    .line 6
    .line 7
    iget-object v3, p0, Lbe/g;->d:Lk9/a;

    .line 8
    .line 9
    iget-object v4, p0, Lbe/g;->c:Lk9/a;

    .line 10
    .line 11
    iget-object v5, p0, Lbe/g;->b:Lk9/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    new-instance v0, Lbe/f;

    .line 18
    .line 19
    invoke-direct {v0}, Lbe/f;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lud/d0;

    .line 27
    .line 28
    iput-object v5, v0, Lbe/f;->a:Lud/d0;

    .line 29
    .line 30
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    iput-object v4, v0, Lbe/f;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v0, Lbe/f;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, v0, Lbe/f;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lgf/b;

    .line 59
    .line 60
    iput-object v1, v0, Lbe/f;->e:Lgf/b;

    .line 61
    .line 62
    return-object v0

    .line 63
    :goto_0
    new-instance v0, Lch/j;

    .line 64
    .line 65
    invoke-direct {v0}, Lch/j;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lud/d0;

    .line 73
    .line 74
    iput-object v5, v0, Lch/j;->a:Lud/d0;

    .line 75
    .line 76
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    iput-object v4, v0, Lch/j;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    iput-object v3, v0, Lch/j;->c:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    iput-object v2, v0, Lch/j;->d:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lgf/b;

    .line 105
    .line 106
    iput-object v1, v0, Lch/j;->e:Lgf/b;

    .line 107
    .line 108
    return-object v0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
