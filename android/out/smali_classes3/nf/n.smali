.class public final Lnf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lk9/a;


# direct methods
.method public synthetic constructor <init>(Lk9/a;I)V
    .locals 0

    iput p2, p0, Lnf/n;->a:I

    iput-object p1, p0, Lnf/n;->b:Lk9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnf/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lnf/n;->b:Lk9/a;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljh/a;

    .line 14
    .line 15
    new-instance v1, Ljh/f;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljh/f;-><init>(Ljh/a;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_1
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ldh/b;

    .line 26
    .line 27
    new-instance v1, Ldh/c;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ldh/c;-><init>(Ldh/b;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_2
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ltf/g;

    .line 38
    .line 39
    new-instance v1, Ltf/l;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ltf/l;-><init>(Ltf/g;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_3
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lnf/b;

    .line 50
    .line 51
    new-instance v1, Lnf/m;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lnf/m;-><init>(Lnf/b;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lrh/b;

    .line 62
    .line 63
    new-instance v1, Lrh/r;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lrh/r;-><init>(Lrh/b;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
