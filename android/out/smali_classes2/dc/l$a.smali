.class public final Ldc/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Ldc/l$a;

.field public static final b:Ldc/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldc/l$a;

    invoke-direct {v0}, Ldc/l$a;-><init>()V

    sput-object v0, Ldc/l$a;->a:Ldc/l$a;

    new-instance v0, Ldc/m;

    sget-object v1, Ldc/f$a;->a:Ldc/f$a;

    invoke-direct {v0, v1}, Ldc/m;-><init>(Ldc/f$a;)V

    sput-object v0, Ldc/l$a;->b:Ldc/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
