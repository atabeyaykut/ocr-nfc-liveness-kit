.class public final Lid/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc5/v;

.field public static final b:Lid/e;

.field public static final c:Lid/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc5/v;

    invoke-direct {v0}, Lc5/v;-><init>()V

    sput-object v0, Lid/d;->a:Lc5/v;

    new-instance v0, Lid/e;

    invoke-direct {v0}, Lid/e;-><init>()V

    sput-object v0, Lid/d;->b:Lid/e;

    new-instance v0, Lid/a;

    invoke-direct {v0}, Lid/a;-><init>()V

    sput-object v0, Lid/d;->c:Lid/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method
