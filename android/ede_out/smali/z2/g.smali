.class public final Lz2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lk9/a;

.field public final c:Lk9/a;

.field public final d:Lk9/a;

.field public final e:Lk9/a;


# direct methods
.method public synthetic constructor <init>(Lk9/a;Lk9/a;Lx2/b;Lk9/a;I)V
    .locals 0

    iput p5, p0, Lz2/g;->a:I

    iput-object p1, p0, Lz2/g;->b:Lk9/a;

    iput-object p2, p0, Lz2/g;->c:Lk9/a;

    iput-object p3, p0, Lz2/g;->d:Lk9/a;

    iput-object p4, p0, Lz2/g;->e:Lk9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lz2/g;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lz2/g;->e:Lk9/a;

    .line 4
    .line 5
    iget-object v2, p0, Lz2/g;->d:Lk9/a;

    .line 6
    .line 7
    iget-object v3, p0, Lz2/g;->c:Lk9/a;

    .line 8
    .line 9
    iget-object v4, p0, Lz2/g;->b:Lk9/a;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lb3/d;

    .line 26
    .line 27
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, La3/e;

    .line 32
    .line 33
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ld3/a;

    .line 38
    .line 39
    new-instance v1, La3/d;

    .line 40
    .line 41
    invoke-direct {v1, v0, v3, v2}, La3/d;-><init>(Landroid/content/Context;Lb3/d;La3/e;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :goto_0
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lb3/d;

    .line 56
    .line 57
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, La3/p;

    .line 62
    .line 63
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lc3/b;

    .line 68
    .line 69
    new-instance v4, La3/o;

    .line 70
    .line 71
    invoke-direct {v4, v0, v3, v2, v1}, La3/o;-><init>(Ljava/util/concurrent/Executor;Lb3/d;La3/p;Lc3/b;)V

    .line 72
    .line 73
    .line 74
    return-object v4

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
