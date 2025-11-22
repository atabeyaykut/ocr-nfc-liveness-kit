.class public abstract Le1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/l$c;,
        Le1/l$f;,
        Le1/l$b;,
        Le1/l$a;,
        Le1/l$d;,
        Le1/l$e;
    }
.end annotation


# static fields
.field public static final a:Le1/l$e;

.field public static final b:Le1/l$c;

.field public static final c:Le1/l$d;

.field public static final d:Le1/l$f;

.field public static final e:Le1/l$d;

.field public static final f:Lv0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/g<",
            "Le1/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le1/l$a;

    invoke-direct {v0}, Le1/l$a;-><init>()V

    new-instance v0, Le1/l$b;

    invoke-direct {v0}, Le1/l$b;-><init>()V

    new-instance v0, Le1/l$e;

    invoke-direct {v0}, Le1/l$e;-><init>()V

    sput-object v0, Le1/l;->a:Le1/l$e;

    new-instance v0, Le1/l$c;

    invoke-direct {v0}, Le1/l$c;-><init>()V

    sput-object v0, Le1/l;->b:Le1/l$c;

    new-instance v0, Le1/l$d;

    invoke-direct {v0}, Le1/l$d;-><init>()V

    sput-object v0, Le1/l;->c:Le1/l$d;

    new-instance v1, Le1/l$f;

    invoke-direct {v1}, Le1/l$f;-><init>()V

    sput-object v1, Le1/l;->d:Le1/l$f;

    sput-object v0, Le1/l;->e:Le1/l$d;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v0, v1}, Lv0/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv0/g;

    move-result-object v0

    sput-object v0, Le1/l;->f:Lv0/g;

    const/4 v0, 0x1

    sput-boolean v0, Le1/l;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)I
.end method

.method public abstract b(IIII)F
.end method
