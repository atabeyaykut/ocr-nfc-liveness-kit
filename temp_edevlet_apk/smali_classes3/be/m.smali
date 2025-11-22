.class public final Lbe/m;
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

    iput p1, p0, Lbe/m;->a:I

    iput-object p2, p0, Lbe/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 3

    .line 1
    iget v0, p0, Lbe/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lbe/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Lbe/h;

    .line 10
    .line 11
    check-cast v1, Lp4/c7;

    .line 12
    .line 13
    iget-object v0, v1, Lp4/c7;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lk9/a;

    .line 16
    .line 17
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lbe/n;

    .line 22
    .line 23
    iget-object v1, v1, Lp4/c7;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lk9/a;

    .line 26
    .line 27
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lbe/a;

    .line 32
    .line 33
    new-instance v2, Lbe/j;

    .line 34
    .line 35
    invoke-direct {v2, p1, v0, v1}, Lbe/j;-><init>(Lbe/h;Lbe/n;Lbe/a;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :goto_0
    check-cast p1, Lch/k;

    .line 40
    .line 41
    check-cast v1, Lp4/d8;

    .line 42
    .line 43
    iget-object v0, v1, Lp4/d8;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lk9/a;

    .line 46
    .line 47
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lch/o;

    .line 52
    .line 53
    new-instance v1, Lch/l;

    .line 54
    .line 55
    invoke-direct {v1, p1, v0}, Lch/l;-><init>(Lch/k;Lch/o;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
