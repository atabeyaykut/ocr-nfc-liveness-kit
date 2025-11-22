.class public final Lz3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/k;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lz3/a;


# direct methods
.method public constructor <init>(Lx4/i;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lz3/f;->b:Lz3/a;

    iput-object p2, p0, Lz3/f;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lz3/f;->b:Lz3/a;

    .line 2
    .line 3
    iget-object v0, v0, Lz3/a;->a:Lz3/c;

    .line 4
    .line 5
    iget-object v1, p0, Lz3/f;->a:Landroid/os/Bundle;

    .line 6
    .line 7
    check-cast v0, Lx4/h;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "MapOptions"

    .line 13
    .line 14
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Ly4/i;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Lx4/h;->a:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v2, v4}, Ly4/i;->c(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, v0, Lx4/h;->b:Ly4/c;

    .line 44
    .line 45
    invoke-interface {v0, v3}, Ly4/c;->u0(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v1}, Ly4/i;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lz4/g;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
