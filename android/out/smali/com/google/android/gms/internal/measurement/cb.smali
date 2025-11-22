.class public final Lcom/google/android/gms/internal/measurement/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bb;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/w4;

.field public static final b:Lcom/google/android/gms/internal/measurement/w4;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/z4;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u4;->a()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;-><init>(Landroid/net/Uri;Z)V

    .line 9
    .line 10
    .line 11
    const-string v1, "measurement.sdk.collection.enable_extend_user_property_size"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/google/android/gms/internal/measurement/cb;->a:Lcom/google/android/gms/internal/measurement/w4;

    .line 19
    .line 20
    const-string v1, "measurement.sdk.collection.last_deep_link_referrer2"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 23
    .line 24
    .line 25
    const-string v1, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/z4;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/w4;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/google/android/gms/internal/measurement/cb;->b:Lcom/google/android/gms/internal/measurement/w4;

    .line 32
    .line 33
    const-string v1, "measurement.id.sdk.collection.last_deep_link_referrer2"

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/v4;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cb;->a:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cb;->b:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b5;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
