.class public abstract Lw4/j;
.super Lm4/b;
.source "SourceFile"

# interfaces
.implements Lw4/k;


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-direct {p0, v0}, Lm4/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 p2, 0x3

    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    move-object p1, p0

    .line 13
    check-cast p1, Lm4/o;

    .line 14
    .line 15
    invoke-virtual {p1}, Lm4/o;->k()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    .line 21
    invoke-static {p2, p1}, Lm4/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    .line 26
    .line 27
    invoke-static {p2}, Lm4/e;->b(Landroid/os/Parcel;)V

    .line 28
    .line 29
    .line 30
    move-object p2, p0

    .line 31
    check-cast p2, Lm4/o;

    .line 32
    .line 33
    iget-object p2, p2, Lm4/o;->b:Lm4/g;

    .line 34
    .line 35
    iget-object p2, p2, Lm4/g;->a:Lo3/h;

    .line 36
    .line 37
    new-instance v1, Lm4/m;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lm4/m;-><init>(Lcom/google/android/gms/location/LocationAvailability;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance p1, Lo3/h0;

    .line 46
    .line 47
    invoke-direct {p1, p2, v1}, Lo3/h0;-><init>(Lo3/h;Lo3/h$b;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p2, Lo3/h;->a:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    .line 58
    invoke-static {p2, p1}, Lm4/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    .line 63
    .line 64
    invoke-static {p2}, Lm4/e;->b(Landroid/os/Parcel;)V

    .line 65
    .line 66
    .line 67
    move-object p2, p0

    .line 68
    check-cast p2, Lm4/o;

    .line 69
    .line 70
    iget-object p2, p2, Lm4/o;->b:Lm4/g;

    .line 71
    .line 72
    iget-object p2, p2, Lm4/g;->a:Lo3/h;

    .line 73
    .line 74
    new-instance v1, Lm4/l;

    .line 75
    .line 76
    invoke-direct {v1, p1}, Lm4/l;-><init>(Lcom/google/android/gms/location/LocationResult;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p1, Lo3/h0;

    .line 83
    .line 84
    invoke-direct {p1, p2, v1}, Lo3/h0;-><init>(Lo3/h;Lo3/h$b;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p2, Lo3/h;->a:Ljava/util/concurrent/Executor;

    .line 88
    .line 89
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return v0
.end method
