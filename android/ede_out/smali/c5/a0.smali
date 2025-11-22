.class public final synthetic Lc5/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/p2;
.implements Lc6/h;


# static fields
.field public static final synthetic a:Lc5/a0;

.field public static final synthetic b:Lc5/a0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/a0;->a:Lc5/a0;

    .line 7
    .line 8
    new-instance v0, Lc5/a0;

    .line 9
    .line 10
    invoke-direct {v0}, Lc5/a0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lc5/a0;->b:Lc5/a0;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lc5/r2;->a:Ljava/util/List;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/q9;->b:Lcom/google/android/gms/internal/measurement/q9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q9;->b()Lcom/google/android/gms/internal/measurement/r9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/r9;->y()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v1, v0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public i(Lc6/y;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lv7/l;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lc6/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lv7/l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
