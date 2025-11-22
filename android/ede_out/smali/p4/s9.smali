.class public final synthetic Lp4/s9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lp4/s9;->a:I

    iput-object p2, p0, Lp4/s9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lp4/s9;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp4/s9;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lr3/n;->c:Lr3/n;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lr3/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :goto_0
    check-cast v1, Lc5/c4;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/s6;

    .line 21
    .line 22
    iget-object v1, v1, Lc5/c4;->k:Lc5/b4;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s6;-><init>(Lc5/b4;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
