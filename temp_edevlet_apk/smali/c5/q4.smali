.class public final Lc5/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc5/y7;

.field public final synthetic c:Lc5/w4;


# direct methods
.method public synthetic constructor <init>(Lc5/w4;Lc5/y7;I)V
    .locals 0

    iput p3, p0, Lc5/q4;->a:I

    iput-object p1, p0, Lc5/q4;->c:Lc5/w4;

    iput-object p2, p0, Lc5/q4;->b:Lc5/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lc5/q4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/q4;->b:Lc5/y7;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/q4;->c:Lc5/w4;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v2, Lc5/w4;->a:Lc5/o7;

    .line 12
    .line 13
    invoke-virtual {v0}, Lc5/o7;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v2, Lc5/w4;->a:Lc5/o7;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lc5/o7;->p(Lc5/y7;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    iget-object v0, v2, Lc5/w4;->a:Lc5/o7;

    .line 23
    .line 24
    invoke-virtual {v0}, Lc5/o7;->a()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v2, Lc5/w4;->a:Lc5/o7;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lc5/o7;->h(Lc5/y7;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
