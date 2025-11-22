.class public final Lva/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lva/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lva/z$a;

.field public static final b:Lva/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lva/z$a;

    invoke-direct {v0}, Lva/z$a;-><init>()V

    sput-object v0, Lva/z$a;->a:Lva/z$a;

    new-instance v0, Lva/a0;

    sget-object v1, Lm9/w;->a:Lm9/w;

    invoke-direct {v0, v1}, Lva/a0;-><init>(Ljava/util/Map;)V

    sput-object v0, Lva/z$a;->b:Lva/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
