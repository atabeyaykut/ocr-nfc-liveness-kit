.class public final Lio/realm/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/h0$a;
    }
.end annotation


# instance fields
.field public final a:Lio/realm/k0;


# direct methods
.method public constructor <init>(Lio/realm/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/h0;->a:Lio/realm/k0;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/h0;->a:Lio/realm/k0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lio/realm/k0;->a:Lio/realm/internal/core/NativeRealmAny;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/realm/k0;->a()Lio/realm/internal/core/NativeRealmAny;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lio/realm/k0;->a:Lio/realm/internal/core/NativeRealmAny;

    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lio/realm/k0;->a:Lio/realm/internal/core/NativeRealmAny;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    invoke-virtual {v1}, Lio/realm/internal/core/NativeRealmAny;->getNativePtr()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    .line 24
    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_METHOD_PARAMETER_TIGHTENS_ANNOTATION"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lio/realm/h0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lio/realm/h0;

    iget-object v0, p0, Lio/realm/h0;->a:Lio/realm/k0;

    iget-object p1, p1, Lio/realm/h0;->a:Lio/realm/k0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/h0;->a:Lio/realm/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/h0;->a:Lio/realm/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
