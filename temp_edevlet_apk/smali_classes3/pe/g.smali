.class public final synthetic Lpe/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;I)V
    .locals 0

    iput p2, p0, Lpe/g;->a:I

    iput-object p1, p0, Lpe/g;->b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lio/realm/g0;)V
    .locals 2

    .line 1
    iget p1, p0, Lpe/g;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lpe/g;->b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
