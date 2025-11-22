.class public final Lnf/l;
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

    iput p1, p0, Lnf/l;->a:I

    iput-object p2, p0, Lnf/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 4

    .line 1
    iget v0, p0, Lnf/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lnf/l;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Ltf/h;

    .line 10
    .line 11
    check-cast v1, Lof/g;

    .line 12
    .line 13
    iget-object v0, v1, Lof/g;->a:Lk9/a;

    .line 14
    .line 15
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ltf/l;

    .line 20
    .line 21
    new-instance v1, Ltf/i;

    .line 22
    .line 23
    invoke-direct {v1, p1, v0}, Ltf/i;-><init>(Ltf/h;Ltf/l;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_1
    check-cast p1, Lnf/d;

    .line 28
    .line 29
    check-cast v1, Ls4/x1;

    .line 30
    .line 31
    iget-object v0, v1, Ls4/x1;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lk9/a;

    .line 34
    .line 35
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lnf/m;

    .line 40
    .line 41
    iget-object v2, v1, Ls4/x1;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lk9/a;

    .line 44
    .line 45
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lrf/d;

    .line 50
    .line 51
    iget-object v1, v1, Ls4/x1;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lk9/a;

    .line 54
    .line 55
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lrf/n;

    .line 60
    .line 61
    new-instance v3, Lnf/e;

    .line 62
    .line 63
    invoke-direct {v3, p1, v0, v2, v1}, Lnf/e;-><init>(Lnf/d;Lnf/m;Lrf/d;Lrf/n;)V

    .line 64
    .line 65
    .line 66
    return-object v3

    .line 67
    :goto_0
    check-cast p1, Ljh/b;

    .line 68
    .line 69
    check-cast v1, Lof/g;

    .line 70
    .line 71
    iget-object v0, v1, Lof/g;->a:Lk9/a;

    .line 72
    .line 73
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljh/f;

    .line 78
    .line 79
    new-instance v1, Ljh/c;

    .line 80
    .line 81
    invoke-direct {v1, p1, v0}, Ljh/c;-><init>(Ljh/b;Ljh/f;)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
