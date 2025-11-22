.class public final Lr3/g;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr3/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:[Lcom/google/android/gms/common/api/Scope;

.field public static final r:[Lm3/d;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:[Lcom/google/android/gms/common/api/Scope;

.field public g:Landroid/os/Bundle;

.field public h:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:[Lm3/d;

.field public k:[Lm3/d;

.field public final l:Z

.field public final m:I

.field public n:Z

.field public final p:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr3/e1;

    invoke-direct {v0}, Lr3/e1;-><init>()V

    sput-object v0, Lr3/g;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Lr3/g;->q:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lm3/d;

    sput-object v0, Lr3/g;->r:[Lm3/d;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lm3/d;[Lm3/d;ZIZLjava/lang/String;)V
    .locals 1
    .param p5    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Lr3/g;->q:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    sget-object v0, Lr3/g;->r:[Lm3/d;

    if-nez p9, :cond_2

    move-object p9, v0

    :cond_2
    if-nez p10, :cond_3

    move-object p10, v0

    :cond_3
    iput p1, p0, Lr3/g;->a:I

    iput p2, p0, Lr3/g;->b:I

    iput p3, p0, Lr3/g;->c:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Lr3/g;->d:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p4, p0, Lr3/g;->d:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    sget p2, Lr3/k$a;->a:I

    const-string p2, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 1
    invoke-interface {p5, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lr3/k;

    if-eqz p3, :cond_5

    check-cast p2, Lr3/k;

    goto :goto_1

    :cond_5
    new-instance p2, Lr3/n1;

    invoke-direct {p2, p5}, Lr3/n1;-><init>(Landroid/os/IBinder;)V

    .line 2
    :goto_1
    sget p3, Lr3/a;->b:I

    if-eqz p2, :cond_6

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_0
    invoke-interface {p2}, Lr3/k;->b()Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p5, "Remote account accessor probably died"

    invoke-static {p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4
    :cond_6
    :goto_4
    iput-object p1, p0, Lr3/g;->h:Landroid/accounts/Account;

    goto :goto_5

    :cond_7
    iput-object p5, p0, Lr3/g;->e:Landroid/os/IBinder;

    iput-object p8, p0, Lr3/g;->h:Landroid/accounts/Account;

    :goto_5
    iput-object p6, p0, Lr3/g;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lr3/g;->g:Landroid/os/Bundle;

    iput-object p9, p0, Lr3/g;->j:[Lm3/d;

    iput-object p10, p0, Lr3/g;->k:[Lm3/d;

    iput-boolean p11, p0, Lr3/g;->l:Z

    iput p12, p0, Lr3/g;->m:I

    iput-boolean p13, p0, Lr3/g;->n:Z

    iput-object p14, p0, Lr3/g;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lr3/e1;->a(Lr3/g;Landroid/os/Parcel;I)V

    return-void
.end method
