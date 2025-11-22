.class public final Lof/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcf/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILof/g;)V
    .locals 0

    iput p1, p0, Lof/h;->a:I

    iput-object p2, p0, Lof/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 2

    .line 1
    iget v0, p0, Lof/h;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lof/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Lof/c;

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
    check-cast v0, Lof/i;

    .line 20
    .line 21
    new-instance v1, Lof/d;

    .line 22
    .line 23
    invoke-direct {v1, p1, v0}, Lof/d;-><init>(Lof/c;Lof/i;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :goto_0
    check-cast p1, Luh/c;

    .line 28
    .line 29
    check-cast v1, Lof/g;

    .line 30
    .line 31
    iget-object v0, v1, Lof/g;->a:Lk9/a;

    .line 32
    .line 33
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Luh/e;

    .line 38
    .line 39
    new-instance v1, Luh/d;

    .line 40
    .line 41
    invoke-direct {v1, p1, v0}, Luh/d;-><init>(Luh/c;Luh/e;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
