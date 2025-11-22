.class public final Lrh/d$c$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh/d$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Lrh/c;",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;",
        ">;>;",
        "Lrh/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lrh/d$c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrh/d$c$a;

    invoke-direct {v0}, Lrh/d$c$a;-><init>()V

    sput-object v0, Lrh/d$c$a;->a:Lrh/d$c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v15, p1

    .line 2
    .line 3
    check-cast v15, Lrh/c;

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    check-cast v4, Lr0/b;

    .line 8
    .line 9
    const-string v0, "$this$execute"

    .line 10
    .line 11
    invoke-static {v15, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "result"

    .line 15
    .line 16
    invoke-static {v4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v4}, Lr0/b;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    move-object v5, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v5, v14

    .line 37
    :goto_0
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    const/16 v0, 0xff3

    .line 50
    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    move-object v1, v15

    .line 54
    move v14, v0

    .line 55
    move-object/from16 v17, v15

    .line 56
    .line 57
    move-object/from16 v15, v16

    .line 58
    .line 59
    :try_start_1
    invoke-static/range {v1 .. v15}, Lrh/c;->copy$default(Lrh/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;ILjava/lang/Object;)Lrh/c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move-object/from16 v17, v15

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    const/16 v14, 0xffb

    .line 76
    .line 77
    const/4 v15, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    move-object/from16 v1, v17

    .line 81
    .line 82
    invoke-static/range {v1 .. v15}, Lrh/c;->copy$default(Lrh/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;ILjava/lang/Object;)Lrh/c;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object/from16 v17, v15

    .line 91
    .line 92
    :goto_1
    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    new-instance v4, Lr0/i;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-direct {v4, v1, v0}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    const/16 v14, 0xffb

    .line 110
    .line 111
    const/4 v15, 0x0

    .line 112
    move-object/from16 v1, v17

    .line 113
    .line 114
    invoke-static/range {v1 .. v15}, Lrh/c;->copy$default(Lrh/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;ILjava/lang/Object;)Lrh/c;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_2
    return-object v0
.end method
