.class public final Lo/g$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/g;-><init>(Landroid/net/ConnectivityManager;Lo/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo/g;


# direct methods
.method public constructor <init>(Lo/g;)V
    .locals 0

    iput-object p1, p0, Lo/g$a;->a:Lo/g;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lo/g$a;->a:Lo/g;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lo/g;->a(Lo/g;Landroid/net/Network;Z)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lo/g$a;->a:Lo/g;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/g;->a(Lo/g;Landroid/net/Network;Z)V

    return-void
.end method
