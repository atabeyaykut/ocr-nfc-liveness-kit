.class public final Lm4/f;
.super Lw4/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lh5/l;

.field public final synthetic b:Lm4/q;


# direct methods
.method public constructor <init>(Lm4/q;Lh5/l;)V
    .locals 0

    iput-object p1, p0, Lm4/f;->b:Lm4/q;

    iput-object p2, p0, Lm4/f;->a:Lh5/l;

    invoke-direct {p0}, Lw4/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/location/LocationResult;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/location/Location;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lm4/f;->a:Lh5/l;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p1, p0, Lm4/f;->b:Lm4/q;

    .line 25
    .line 26
    const-string v0, "GetCurrentLocation"

    .line 27
    .line 28
    const-string v1, "Listener type must not be empty"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lr3/r;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lo3/h$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lo3/h$a;-><init>(Lw4/c;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lh5/l;

    .line 39
    .line 40
    invoke-direct {v1}, Lh5/l;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v0, v2, v1}, Lm4/q;->E(Lo3/h$a;ZLh5/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    return-void
.end method
