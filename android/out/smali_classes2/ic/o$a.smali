.class public final Lic/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lic/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/o$a;

    invoke-direct {v0}, Lic/o$a;-><init>()V

    sput-object v0, Lic/o$a;->a:Lic/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lma/j;Lma/j;)V
    .locals 0

    const-string p1, "from"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
