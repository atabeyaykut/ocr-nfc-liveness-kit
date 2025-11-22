.class public final Lz7/c;
.super Lv7/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv7/e<",
        "Lx7/c;",
        "Lz7/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv7/h;


# direct methods
.method public constructor <init>(Lv7/h;)V
    .locals 0

    invoke-direct {p0}, Lv7/e;-><init>()V

    iput-object p1, p0, Lz7/c;->b:Lv7/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lx7/c;

    .line 2
    .line 3
    iget-object v0, p0, Lz7/c;->b:Lv7/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Lv7/h;->b()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lz7/a;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lp4/da;->c(Ljava/lang/String;)Lp4/v9;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "com.google.mlkit.dynamite.barcode"

    .line 18
    .line 19
    invoke-static {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-nez v3, :cond_2

    .line 29
    .line 30
    sget-object v3, Lm3/f;->b:Lm3/f;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lm3/f;->a(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const v4, 0xc306c20

    .line 40
    .line 41
    .line 42
    if-lt v3, v4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance v3, Lz7/k;

    .line 46
    .line 47
    invoke-direct {v3, v1, p1, v2}, Lz7/k;-><init>(Landroid/content/Context;Lx7/c;Lp4/v9;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    new-instance v3, Lz7/i;

    .line 52
    .line 53
    invoke-direct {v3, v1, p1, v2}, Lz7/i;-><init>(Landroid/content/Context;Lx7/c;Lp4/v9;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    new-instance v1, Lz7/e;

    .line 57
    .line 58
    invoke-direct {v1, v0, p1, v3, v2}, Lz7/e;-><init>(Lv7/h;Lx7/c;Lz7/f;Lp4/v9;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method
